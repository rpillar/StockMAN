rendering
renderContentOn: html

	html navigation
		id: 'cbp-spmenu-s1';
		class: 'cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left';
		with: [
			html div 
				class: 'menu-header-holder';
				with: [
					html button 
						id: 'closeLeft';
						class: 'menu-header';  
						script: (
							( html jQuery this )
							on: 'click'
							do: (
								( ( html jQuery id: 'cbp-spmenu-s1' ) removeClass: 'cbp-spmenu-open' )
							)
						);
						with: [
							html span
								class: 'menu-header-outline';
								with: [
									html span 
										class: 'fa fa-times fa-5x'  
								]  
						]
				].
			
			html anchor 
				class: 'navItem selected center-align';
				script: ( 
					html jQuery this 
					on: 'click' 
					do: ( 
						( ( html jQuery class: 'navItem' ) removeClass: 'selected' ),
						( ( html jQuery this ) addClass: 'selected' ),
						( ( html jQuery id: 'cbp-spmenu-s1' ) removeClass: 'cbp-spmenu-open' ),
						( ( html jQuery id: 'main' ) load html: [ :r | self renderHomePageOn: r ] )
					) 
				);
				with: 'Home'.
			html anchor
			  	class: 'navItem center-align'; 
				script: ( 
					html jQuery this 
					on: 'click' 
					do: ( 
						( ( html jQuery class: 'navItem' ) removeClass: 'selected' ),
						( ( html jQuery this ) addClass: 'selected' ),
						( ( html jQuery id: 'cbp-spmenu-s1' ) removeClass: 'cbp-spmenu-open' ),
						( ( html jQuery id: 'main' ) load html: [ :r | self renderInventoryPageOn: r ] )						
					) 
				);
				with: 'Inventory'. 
			html anchor 
				class: 'navItem center-align'; 
				script: ( 
					html jQuery this 
					on: 'click' 
					do: ( 
						( ( html jQuery class: 'navItem' ) removeClass: 'selected' ),
						( ( html jQuery this ) addClass: 'selected' ) 
					) 
				);
				with: 'Orders'. 
			html anchor 
				class: 'navItem center-align'; 
				script: ( 
					html jQuery this 
					on: 'click' 
					do: ( 
						( ( html jQuery class: 'navItem' ) removeClass: 'selected' ),
						( ( html jQuery this ) addClass: 'selected' ) 
					) 
				);
				with: 'Suppliers'. 
			html anchor 
				class: 'navItem center-align'; 
				script: ( 
					html jQuery this 
					on: 'click' 
					do: ( 
						( ( html jQuery class: 'navItem' ) removeClass: 'selected' ),
						( ( html jQuery this ) addClass: 'selected' ) 
					) 
				);				
				with: 'Promotions'. 	
			html anchor 
				class: 'navItem center-align'; 
				script: ( 
					html jQuery this 
					on: 'click' 
					do: ( 
						( ( html jQuery class: 'navItem' ) removeClass: 'selected' ),
						( ( html jQuery this ) addClass: 'selected' ) 
					) 
				);
				with: 'Reports'.
			html anchor 
				class: 'navItem center-align'; 
				script: ( 
					html jQuery this 
					on: 'click' 
					do: ( 
						( ( html jQuery class: 'navItem' ) removeClass: 'selected' ),
						( ( html jQuery this ) addClass: 'selected' ) 
					) 
				);
				with: 'Admin'.			
		].