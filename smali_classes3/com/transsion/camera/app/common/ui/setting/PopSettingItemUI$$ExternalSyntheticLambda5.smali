.class public final synthetic Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->$r8$lambda$X_j9QA9tKAMFXjlIQdlDbS_55Yk(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
