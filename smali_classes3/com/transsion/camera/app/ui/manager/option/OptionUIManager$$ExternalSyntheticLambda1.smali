.class public final synthetic Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field public final synthetic f$2:Lcom/transsion/camera/app/common/IAppUI;

.field public final synthetic f$3:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field public final synthetic f$4:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

.field public final synthetic f$5:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field public final synthetic f$6:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field public final synthetic f$7:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field public final synthetic f$8:Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V
    .registers 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/manager/IScreenManager;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/camera/app/common/IAppUI;

    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$3:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$4:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    iput-object p6, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$5:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    iput-object p7, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$6:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    iput-object p8, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$7:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    iput-object p9, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$8:Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/manager/IScreenManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$3:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$4:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$5:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$6:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$7:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager$$ExternalSyntheticLambda1;->f$8:Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;

    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->$r8$lambda$4YI542QEM5Ia3xrosedjRC-hDVs(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    move-result-object p0

    return-object p0
.end method
