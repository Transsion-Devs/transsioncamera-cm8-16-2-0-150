.class public final synthetic Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

.field public final synthetic f$1:Landroid/view/LayoutInflater;

.field public final synthetic f$2:Landroid/view/ViewGroup;

.field public final synthetic f$3:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;->f$1:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;->f$2:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;->f$1:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;->f$2:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->$r8$lambda$r_eQvBaMPoaHYOcEJBgilymq1fQ(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    move-result-object p0

    return-object p0
.end method
