.class public Lcom/transsion/camera/app/mode/ModePickerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDefaultModeCountInTab:I

.field private final mModePickerStyle:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mModePickerStyle:I

    iput v0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModePickerStyle:I

    .line 31
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mInitModesNumberInTab:I

    iput v0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mDefaultModeCountInTab:I

    return-void
.end method


# virtual methods
.method public defaultModeCountInTab()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mDefaultModeCountInTab:I

    return p0
.end method

.method public modePickerStyleMore()Z
    .registers 2

    const/4 v0, 0x2

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModePickerStyle:I

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public modePickerStyleNormal()Z
    .registers 1

    .line 35
    iget p0, p0, Lcom/transsion/camera/app/mode/ModePickerConfig;->mModePickerStyle:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
