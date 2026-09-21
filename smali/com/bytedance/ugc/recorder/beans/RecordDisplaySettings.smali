.class public final Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private surface:Landroid/view/Surface;

.field private veDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    const-string v1, "Builder().build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->veDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    return-void
.end method


# virtual methods
.method public final getSurface()Landroid/view/Surface;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public final getVeDisplaySettings()Lcom/ss/android/vesdk/VEDisplaySettings;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->veDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    return-object p0
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->surface:Landroid/view/Surface;

    return-void
.end method

.method public final setVeDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->veDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    return-void
.end method
