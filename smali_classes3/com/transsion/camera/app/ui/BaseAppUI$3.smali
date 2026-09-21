.class Lcom/transsion/camera/app/ui/BaseAppUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;->initImageryGuideManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 1875
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$3;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllGuideFragmentExit()V
    .registers 2

    .line 1878
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$3;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onGuideFragmentResume()V
    .registers 3

    .line 1883
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$3;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 1884
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$3;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method
