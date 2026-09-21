.class public Lcom/transsion/camera/ui/setting/goldwatermark/GoldWaterMarkSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/CustomFragmentSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 13
    const-string v0, "key_gold_watermark"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/CustomFragmentSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 23
    sget p0, Lcom/transsion/camera/R$drawable;->ic_auto_watermark:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 18
    sget p0, Lcom/transsion/camera/R$string;->gold_watermark_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
