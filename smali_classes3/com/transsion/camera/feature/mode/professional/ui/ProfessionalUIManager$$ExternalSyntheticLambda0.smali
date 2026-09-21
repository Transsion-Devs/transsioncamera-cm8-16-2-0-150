.class public final synthetic Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/LayoutInflater;

.field public final synthetic f$3:Landroid/view/ViewGroup;

.field public final synthetic f$4:Landroid/view/ViewGroup;

.field public final synthetic f$5:Lcom/transsion/camera/app/common/IAppUI;

.field public final synthetic f$6:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field public final synthetic f$7:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$2:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$3:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$4:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$5:Lcom/transsion/camera/app/common/IAppUI;

    iput-object p7, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$6:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    iput-object p8, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$7:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$2:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$3:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$4:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$5:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$6:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;->f$7:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->$r8$lambda$jDmHEFBR3kVGhsSJkAQqgUV3nMY(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    move-result-object p0

    return-object p0
.end method
