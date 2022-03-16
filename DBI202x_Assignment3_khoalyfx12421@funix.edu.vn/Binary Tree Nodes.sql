select  case 
        when p is null then concat(n, ' Root')
        when n in (select distinct p from bst) then concat(n, ' Inner')
        else concat(n, ' Leaf')
    end
from BST order by n asc