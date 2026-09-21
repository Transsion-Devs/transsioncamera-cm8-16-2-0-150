.class Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->onProgress()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener$1;->this$1:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener$1;->this$1:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    iget-object v0, v0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->this$0:Lcom/ss/android/ttve/nativePort/VEBingoManager;

    # invokes: Lcom/ss/android/ttve/nativePort/VEBingoManager;->getBingoTransitionResults()[Lcom/ss/android/ttve/nativePort/VETransitionResult;
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/VEBingoManager;->access$100(Lcom/ss/android/ttve/nativePort/VEBingoManager;)[Lcom/ss/android/ttve/nativePort/VETransitionResult;

    move-result-object v0

    .line 502
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener$1;->this$1:Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;

    # getter for: Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->detectListener:Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;->access$200(Lcom/ss/android/ttve/nativePort/VEBingoManager$SingleThreadTaskListener;)Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/ss/android/ttve/nativePort/VEBingoManager$TransitionDetectListener;->onCompleted([Lcom/ss/android/ttve/nativePort/VETransitionResult;)V

    return-void
.end method
