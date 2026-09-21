.class public Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUISpec;
.super Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 15
    sget p0, Lcom/transsion/camera/R$string;->video_watermark_setting_summary:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
