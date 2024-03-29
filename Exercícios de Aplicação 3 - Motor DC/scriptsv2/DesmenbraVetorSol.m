% Computa os indices de tetab, tetabp, im e vm dentro do vetor solu��o

    % index de tetab
    index_tetab = (1:K-1) * 3 - 2;
    
    % index de tetabp
    index_tetabp = (1:K-1) * 3 - 1;
    
    % index de im
    index_im = (1:K-1) * 3;
    
    % index de vm
    index_vm = (1:K) + (K-1)*3;

% Pega os valores do vetor solu��o
    % tetab
    tetab = Sol(index_tetab);
    
    % tetabp
    tetabp = Sol(index_tetabp);
    
    % im
    im = Sol(index_im);
    
    % vm
    vm = Sol(index_vm);

% Adiciona os instantes inicial e final
    % tetab
    tetab = [ tetab_0  ;...
              tetab    ;...
              tetab_f ];
    
    % tetabp
    tetabp = [ tetabp_0 ;...
              tetabp    ;...
              tetabp_f ];
    % im      
    im = [ im_0  ;...
           im    ;...
           im_f ];
       
    % vm
    vm = [vm; vm(end)];
    
    % pm (pot�ncia de entrada no motor)
    pm = vm.*im;