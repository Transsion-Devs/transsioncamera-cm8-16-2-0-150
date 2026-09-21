.class public Lcom/transsion/camera/feature/mode/vlog/settingui/ComposeSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 21
    const-string v0, "key_vlog_compose"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntryViewId()I
    .registers 1

    .line 41
    sget p0, Lcom/transsion/camera/feature/vlog/R$id;->setting_ui_item_vlog_compose:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 36
    sget p0, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_vlog_compose:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 31
    sget p0, Lcom/transsion/camera/feature/vlog/R$string;->vlog_compose_item_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 26
    sget p0, Lcom/transsion/camera/feature/vlog/R$string;->vlog_compose_item_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
