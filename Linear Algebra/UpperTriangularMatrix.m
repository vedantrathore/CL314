function [output] = UpperTriangularMatrix(A)
    %UPPERTRIANGULARMATRIX convert a Square matrix A into it's Upper Triangular form
    [~, n] = size(A);
    
    for i=1:n-1
        for j=i+1:n
            factor = A(j,i) / A(i,i);
            A(j,i:n) = A(j,i:n) - factor * A(i,i:n);
        end
    end
    
    disp('The Upper Traingular matrix of Input Matirx A is: ')
    output = A;
    
end

