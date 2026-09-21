.class public Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1L
.end annotation


# instance fields
.field private mOrderEditor:Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;->mOrderEditor:Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;->mOrderEditor:Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;

    .line 29
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;->mOrderEditor:Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 39
    const-class p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 34
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mModeOrderEditorSupport:Z

    return p0
.end method
