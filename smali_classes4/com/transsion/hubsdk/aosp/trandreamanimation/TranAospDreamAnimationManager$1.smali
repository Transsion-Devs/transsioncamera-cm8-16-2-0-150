.class Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManagerExt$TranCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamAnimationEvent(I)V
    .registers 5

    .line 102
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager$1;->this$0:Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    # getter for: Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->mCallBacks:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;->access$000(Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;

    .line 103
    invoke-interface {v2, p1}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$TranCallBack;->onDreamAnimationEvent(I)V

    goto :goto_b

    :cond_19
    return-void
.end method
