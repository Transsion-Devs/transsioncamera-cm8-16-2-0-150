.class Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$ChangeInfo;

    .line 147
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;->animateChangeImpl(Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$ChangeInfo;)V

    goto :goto_7

    .line 149
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator;->mChangesList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/animator/LocalItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
