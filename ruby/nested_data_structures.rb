# This is an example of taking an order for food and beer where I work 

ein_prosit = {
    food: {
        sausages: 'Four Sampler',
        sampler_info: [
            "elk", "buffalo", "boar", "pheasant" 
        ],
        sides: [
            "potato salad", "cucumber salad", "chips"
        ]
    },
    beers: {
        type: 'German',
        options: [
            "Hofbrau Dunkel",
            "Hofbrau Marzen"
            ]
    },
    bar_info: {
        company_name: 'Ein Prosit',
        seating_info: {
            total_tables: 8,
            seats_available: 70
        },
}

#driver code:
ein_prosit[:beers][:type]
ein_prosit[:food][:sausages]
ein_prosit[:food][:sides][1]