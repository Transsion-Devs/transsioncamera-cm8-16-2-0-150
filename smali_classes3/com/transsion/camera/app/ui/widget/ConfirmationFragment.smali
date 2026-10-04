.class public Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;
.super Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$ipbP0hWcmB7P83LK_jB-tgADkmU(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jNqMX-50Kgr_KQUTHslY9k9Oidk(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ConfirmationFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 51
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;->startManagePermissionDetails()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;->finish()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    .line 34
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCreateDialog E"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_e

    .line 37
    const-string v1, "PERMISSION_DIALOG"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 40
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;->getDialogMessage()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 42
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 45
    :cond_1d
    new-instance v2, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "camera_permission_title"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera_permission_go_setting"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;)V

    const/high16 v3, 0x1040000

    .line 55
    invoke-virtual {v1, v3, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_72

    .line 61
    const-string v1, "dialogWindow is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 65
    :cond_72
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 66
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_89

    .line 67
    sget p0, Lcom/transsion/camera/app/common/R$drawable;->pad_dialog_night_round_corner:I

    goto :goto_8b

    .line 68
    :cond_89
    sget p0, Lcom/transsion/camera/app/common/R$drawable;->pad_dialog_round_corner:I

    .line 66
    :goto_8b
    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    :cond_8e
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 p1, 0x50

    .line 72
    invoke-virtual {v2, p1}, Landroid/view/Window;->setGravity(I)V

    .line 73
    invoke-virtual {v2, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p0, 0x3

    .line 74
    invoke-virtual {v2, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 78
    const-string p0, "onCreateDialog X"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 85
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BasePermissionFragment;->finish()V

    return-void
.end method
