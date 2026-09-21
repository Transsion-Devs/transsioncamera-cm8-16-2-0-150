.class Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;
.super Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    invoke-direct {p0}, Lcom/transsion/hubsdk/trandreamanimation/ITranDreamAnimationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamAnimationEvent(I)V
    .registers 6

    .line 42
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    # getter for: Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->access$000(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 43
    :try_start_7
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;

    # getter for: Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->mTranCallBacks:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;->access$100(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_22

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;

    .line 44
    invoke-interface {v3, p1}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;->onDreamAnimationEvent(I)V

    goto :goto_12

    :catchall_20
    move-exception p0

    goto :goto_24

    .line 46
    :cond_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_20

    throw p0
.end method
