.class public Lcom/transsion/camera/app/ConfirmationFragmentUIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDialogFragment:Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private final mSecureCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p4, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mSecureCamera:Z

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 37
    iput-object p3, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->createDialogFragment(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mDialogFragment:Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;

    return-void
.end method

.method private createDialogFragment(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;
    .registers 3

    .line 42
    const-string p0, "PERMISSION_DIALOG"

    .line 43
    invoke-virtual {p2, p0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;

    if-eqz p0, :cond_d

    .line 45
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 47
    :cond_d
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->screenFlip(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x0

    .line 48
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "com.transsion.camera.app.ui.widget.FlipPermissionFragment"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;

    return-object p0

    .line 51
    :cond_1f
    new-instance p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;-><init>()V

    return-object p0
.end method


# virtual methods
.method public showDialogFragment()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mDialogFragment:Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;->setPermissionManager(Lcom/transsion/camera/app/common/permission/PermissionManager;)V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mDialogFragment:Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mSecureCamera:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;->setSecureCamera(Z)V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mDialogFragment:Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "PERMISSION_DIALOG"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
