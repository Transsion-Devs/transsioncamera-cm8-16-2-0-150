.class public Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdjustSupport:Z

.field private final mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    return-void
.end method


# virtual methods
.method configParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
    .registers 6

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->mFlashManager:Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFacade()Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters flashFacade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mAdjustSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->mAdjustSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->mValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->mAdjustSupport:Z

    if-nez v1, :cond_39

    return-void

    .line 56
    :cond_39
    const-string/jumbo v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const/4 p0, 0x0

    .line 57
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    return-void

    .line 61
    :cond_47
    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->mValue:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    return-void
.end method

.method initLuminance(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 5

    .line 37
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedLuminanceScope()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->mAdjustSupport:Z

    if-eqz v1, :cond_21

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/ledflash/FlipLuminanceAdjust;->mValue:I

    :cond_21
    return-void
.end method
