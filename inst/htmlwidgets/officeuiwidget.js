// trick to include React Fragment component
//  which is like an empty container
Fabric.Fragment = React.Fragment;

// office-ui-fabric namespaces all the components with Fabric
reactR.reactWidget('officeuiwidget', 'output', Fabric);
