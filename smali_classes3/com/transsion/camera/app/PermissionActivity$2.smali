.class Lcom/transsion/camera/app/PermissionActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/PermissionActivity;->showLocationPermissionsRequest()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/PermissionActivity;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/app/PermissionActivity$2;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 120
    iget-object p2, p0, Lcom/transsion/camera/app/PermissionActivity$2;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    invoke-virtual {p2}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result p2

    if-nez p2, :cond_18

    .line 122
    iget-object p2, p0, Lcom/transsion/camera/app/PermissionActivity$2;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    const-string v0, "keyguard"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity$2;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 126
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity$2;->this$0:Lcom/transsion/camera/app/PermissionActivity;

    const/4 p2, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {p0, p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->gotoAppPermissionDetails(Landroid/content/Context;ZLjava/lang/String;)V

    .line 129
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
