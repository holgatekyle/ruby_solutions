# https://www.interviewcake.com/question/merging-ranges

array =   [ [0, 1], [0, 3], [3, 5], [4, 8], [10, 12], [9, 10] ]
#array = [ [1, 10], [2, 6], [3, 5], [7, 9] ]
 
def condense_ranges(a)
    meetings = a.sort{|a, b| a[0] <=> b[0]}
 
    i = 0
    while i < meetings.length - 1
        curr_meeting = meetings[i]
        next_meeting = meetings[i+1]
 
        #if earlier meeting runs longer than the next just delete the next meeting
        if curr_meeting[1] >= next_meeting[1]
            meetings.delete_at(i+1)
        #earlier meeting ends after or exactly when the next begins, we have overlap
        elsif curr_meeting[1] >= next_meeting[0]
            meetings[i] = [ curr_meeting[0], next_meeting[1] ]
            meetings.delete_at(i+1)
        else
        #if no overlap, check the next element
            i += 1
        end
    end
 
    #the remaining elements are the solution
    meetings
end
 
puts condense_ranges(array)