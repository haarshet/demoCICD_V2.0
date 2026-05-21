public class FutureClassDemo1 {
    //to learn the futureclass
    @future
    public static void futureMethod(){
        system.debug('First future Method');
        //futureMrthod2();
        system.enqueueJob( new ExploreQueuableOne());
    }
    
    @future
    public static void futureMrthod2(){
        system.debug('First future');
    }

}