.class Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 4

    .line 345
    instance-of p1, p2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    if-eqz p1, :cond_b

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    check-cast p2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$mdoOnClickSelectedItem(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V

    :cond_b
    return-void
.end method

.method public onItemSelected(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 7

    .line 334
    instance-of p1, p2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    if-eqz p1, :cond_2f

    .line 335
    check-cast p2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 336
    iget p1, p2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    if-nez p1, :cond_d

    const-string p1, "closed_reason_user"

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 337
    :goto_e
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$200(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    .line 338
    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$100(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$000(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 337
    const-string v2, "key_mu_slimbody_closed_reason"

    invoke-virtual {p3, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$mdoOnItemSelected(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;)V

    :cond_2f
    return-void
.end method
