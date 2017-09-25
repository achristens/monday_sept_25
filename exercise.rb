#   Update this hash so that each step has the name of a
#   committee member associated with it (i.e. by adding an
#   additional person key in each step hash), and each
#   committee member has an equal number of tasks. Avoid
#   typing out the committee members' names elsewhere in your
#   code.

project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 1, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    }
  ]
}
names = 0

puts project[:steps].each {
  |k, v| k[:person] = project[:committee][names]
  names += 1
  if names > 2
    names = 0
  end
}

# # To access names:
# puts project[:committee]
#
# # To access steps:
# puts project[:steps]

# Add new hash to each step:
# puts project[:steps].each {|k, v| k[:person]=" "}

# Populating with other hash contents
