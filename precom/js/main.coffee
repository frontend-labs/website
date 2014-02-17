require(["vendor/jquery/jquery","vendor/modernizr/modernizr"], (jquery,modernizr) ->
	Labs = (->
		st =
			body : 'body'
			squareItem : '#squareItem'
			flipItem : '.f1_container'
		dom = {}				
		catchDom = ->
			dom.body = $(st.body)
			dom.squareItem = $(st.squareItem)
			return
		suscribeEvents = ->
			$(st.flipItem).on 'click',events.flipItem
			return
		afterCatchDom = ->
			appendItem()
			showMessges()
			return
		events = 
			flipItem : ->
				$(this).addClass('hover')
		showMessges = ->
			setTimeout(->
				$($(st.flipItem)[1]).trigger 'click'
			,1000)
			setTimeout(->
				$($(st.flipItem)[2]).trigger 'click'
			,2000)
			setTimeout(->
				$($(st.flipItem)[3]).trigger 'click'
			,3000)
			setTimeout(->
				$($(st.flipItem)[4]).trigger 'click'
			,4000)
			setTimeout(->
				$($(st.flipItem)[5]).trigger 'click'
			,5000)
			setTimeout(->
				$($(st.flipItem)[14]).trigger 'click'
			,6000)
			setTimeout(->
				$($(st.flipItem)[15]).trigger 'click'
			,7000)
			setTimeout(->
				$($(st.flipItem)[16]).trigger 'click'
			,8000)
			setTimeout(->
				$($(st.flipItem)[25]).trigger 'click'
			,9000)
			setTimeout(->
				$($(st.flipItem)[26]).trigger 'click'
			,10000)
			setTimeout(->
				$($(st.flipItem)[27]).trigger 'click'
			,11000)
			setTimeout(->
				$($(st.flipItem)[28]).trigger 'click'
			,12000)
		appendItem = ->
			screenArea = $(window).width() * $(window).height()
			totalToAppend = Math.round screenArea / 10000
			console.log(totalToAppend)
			tmpSquare = dom.squareItem.html()
			i = 0
			while i<totalToAppend
				dom.body.append(tmpSquare)
				i++
			$($(st.flipItem)[1]).find('.back').text('F')
			$($(st.flipItem)[2]).find('.back').text('R')
			$($(st.flipItem)[3]).find('.back').text('O')
			$($(st.flipItem)[4]).find('.back').text('N')
			$($(st.flipItem)[5]).find('.back').text('T')
			$($(st.flipItem)[14]).find('.back').text('E')
			$($(st.flipItem)[15]).find('.back').text('N')
			$($(st.flipItem)[16]).find('.back').text('D')
			$($(st.flipItem)[25]).find('.back').text('L')
			$($(st.flipItem)[26]).find('.back').text('A')
			$($(st.flipItem)[27]).find('.back').text('B')
			$($(st.flipItem)[28]).find('.back').text('S')
			return
		initialize = ->
			catchDom()
			afterCatchDom()
			suscribeEvents()
			return
		return {
			init : initialize
		}
	)()

	$(document).on 'ready',->
		Labs.init()    
)