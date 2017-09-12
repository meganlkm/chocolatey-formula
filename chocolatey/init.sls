{% for package, context in pillar.get('chocolatey_packages', {}).items() %}
"Install Chocolatey package {{ package }}":
  chocolatey.installed:
    - name: {{ package }}
    # Use map.jinja style with context ?
    # if context != null key,value for context.keys,context.items
{% endfor %}
