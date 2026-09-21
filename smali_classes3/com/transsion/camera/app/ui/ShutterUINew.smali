.class public Lcom/transsion/camera/app/ui/ShutterUINew;
.super Lcom/transsion/camera/app/ui/AbstractShutterUI;
.source "SourceFile"


# static fields
.field private static final BRAND_SHUTTER_TYPE_MAP:Landroid/util/SparseArray;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ShutterUINew;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 19
    new-instance v0, Lcom/transsion/camera/app/ui/ShutterUINew$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/ShutterUINew$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/ShutterUINew;->BRAND_SHUTTER_TYPE_MAP:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractShutterUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method protected getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
    .registers 8

    .line 100
    sget-object v0, Lcom/transsion/camera/app/ui/ShutterUINew;->BRAND_SHUTTER_TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 104
    sget-object v1, Lcom/transsion/camera/app/ui/ShutterUINew;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUISpecFromType use default, type not configed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_54

    .line 106
    :cond_22
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 107
    array-length v4, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5b

    .line 109
    sget-object v1, Lcom/transsion/camera/app/ui/ShutterUINew;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUISpecFromType use default, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", drawable size: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v3

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    :goto_54
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 122
    :cond_5b
    new-instance p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;-><init>()V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 124
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const/4 v0, 0x2

    .line 126
    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const/4 v0, 0x3

    .line 127
    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    const/4 v0, 0x4

    .line 128
    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    const/4 v0, 0x5

    .line 129
    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    const/4 v0, 0x6

    .line 130
    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const/4 v0, 0x7

    .line 131
    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    const/16 v0, 0x8

    .line 132
    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    .line 133
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->close()V

    return-object p1
.end method
