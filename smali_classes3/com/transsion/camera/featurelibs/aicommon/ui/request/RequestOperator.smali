.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private final mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

.field private final mRequestViewer:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$6G1rLyFXHg-zz0c7hbvKwZXhMLg(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->lambda$showDeleteDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8tA8ujUMhoGNlLY3jywnY3aJz-8(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->lambda$showTerminateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SFOnh7ZOv9USl6hAPwjDdXV4HHc(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;Lcom/transsion/camera/app/common/ai/AIRequest;ILandroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->lambda$showTerminateDialog$0(Lcom/transsion/camera/app/common/ai/AIRequest;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YVEOq-GgAuHyjrrywGlFDFcy__w(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->lambda$showDeleteDialog$2(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestOperator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-direct {v0, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    .line 46
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestViewer:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;

    return-void
.end method

.method private hideDialog()V
    .registers 3

    .line 118
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_11

    .line 121
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->hide()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    :cond_11
    return-void
.end method

.method private synthetic lambda$showDeleteDialog$2(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 166
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->delete(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->hideDialog()V

    return-void
.end method

.method private synthetic lambda$showDeleteDialog$3(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->hideDialog()V

    return-void
.end method

.method private synthetic lambda$showTerminateDialog$0(Lcom/transsion/camera/app/common/ai/AIRequest;ILandroid/content/DialogInterface;I)V
    .registers 6

    .line 86
    sget-object p3, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "terminate request@"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result p3

    if-eq p2, p3, :cond_32

    .line 88
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_terminate_status_changed_toast:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->showToast(I)V

    goto :goto_3f

    .line 90
    :cond_32
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 91
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_terminate_status_changed_toast:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->showToast(I)V

    .line 95
    :cond_3f
    :goto_3f
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->hideDialog()V

    return-void
.end method

.method private synthetic lambda$showTerminateDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->hideDialog()V

    return-void
.end method

.method private showDeleteDialog(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 5

    .line 156
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showDeleteDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->hideDialog()V

    .line 160
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_delete_title:I

    .line 163
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_delete_content:I

    .line 164
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_delete_delete:I

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_cancel:I

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;)V

    .line 170
    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 175
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private showTerminateDialog(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 6

    .line 74
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showTerminateDialog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->hideDialog()V

    .line 78
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getRequestStatus()I

    move-result v0

    .line 80
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_terminate_title:I

    .line 83
    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_terminate_content:I

    .line 84
    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_terminate_terminate:I

    new-instance v3, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;Lcom/transsion/camera/app/common/ai/AIRequest;I)V

    .line 85
    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_dialog_cancel:I

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;)V

    .line 97
    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 102
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private showToast(I)V
    .registers 4

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 110
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mToast:Landroid/widget/Toast;

    .line 111
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 113
    sget-object p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showToast exception"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public delete(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 152
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->showDeleteDialog(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->init()V

    return-void
.end method

.method public oppositeSwitch(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->oppositeSwitch(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V

    return-void
.end method

.method public refresh()V
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->refresh()V

    return-void
.end method

.method public retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 181
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_capture_tip_connet_network:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->showToast(I)V

    return-void

    .line 184
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->captureNotAllowed()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 185
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_capture_tip_maximum_daily_usage:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->showToast(I)V

    return-void

    .line 188
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public setItemListener(Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->setItemListener(Lcom/transsion/camera/featurelibs/aicommon/ui/request/IItemListener;)V

    return-void
.end method

.method public terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->showTerminateDialog(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 193
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->hideDialog()V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_a

    .line 195
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 197
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->unInit()V

    return-void
.end method

.method public view(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;F)V
    .registers 6

    .line 128
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseJpegUri()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 130
    sget p2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_file_deleted:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->showToast(I)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->delete(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void

    .line 135
    :cond_15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/FileUtil;->fileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 137
    sget p2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_file_deleted:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->showToast(I)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestRepo:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->delete(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void

    .line 142
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->mRequestViewer:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;

    invoke-virtual {p0, v0, p2, p3}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestViewer;->gotoGallery(Landroid/net/Uri;Landroid/view/View;F)V

    return-void
.end method
