.class public Lcom/transsion/camera/app/common/taps/policy/PublicLowQualityPicturePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/ILowQualityPicturePolicy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayNameInfo(Landroid/content/ContentValues;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;
    .registers 2

    const/4 p0, 0x1

    .line 18
    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getDisplayNameInfo(Landroid/content/ContentValues;Z)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLowQualityMediaSelection(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    .line 13
    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getLowQualityMediaSelection(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
