.class public Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RATIO_16_9:Ljava/lang/String; = "16:9"

.field public static final RATIO_185_100:Ljava/lang/String; = "1.85:1"

.field public static final RATIO_1_1:Ljava/lang/String; = "1:1"

.field public static final RATIO_235_100:Ljava/lang/String; = "2.35:1"

.field public static final RATIO_2_1:Ljava/lang/String; = "2:1"

.field public static final RATIO_3_4:Ljava/lang/String; = "3:4"

.field public static final RATIO_4_3:Ljava/lang/String; = "4:3"

.field public static final RATIO_9_16:Ljava/lang/String; = "9:16"

.field public static final RATIO_IPHONE_X:Ljava/lang/String; = "1.125:2.436"

.field public static final RATIO_ORIGINAL:Ljava/lang/String; = "original"

.field public static final TYPE_CANVAS_BLUR:Ljava/lang/String; = "canvas_blur"

.field public static final TYPE_CANVAS_COLOR:Ljava/lang/String; = "canvas_color"

.field public static final TYPE_CANVAS_IMAGE:Ljava/lang/String; = "canvas_image"


# instance fields
.field public blur:F

.field public color:Ljava/lang/String;

.field public height:I

.field public imagePath:Ljava/lang/String;

.field public ratio:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratio"
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toVECanvasFilterParam()Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;
    .registers 4

    .line 58
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;-><init>()V

    .line 59
    const-string v1, "canvas_color"

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 60
    sget-object v1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->COLOR:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    .line 61
    sget-object v1, Lcom/bytedance/ies/cutsame/util/ColorUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/ColorUtils;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->color:Ljava/lang/String;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, p0, v2}, Lcom/bytedance/ies/cutsame/util/ColorUtils;->rgbaStrToArgbInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->color:I

    const/4 p0, 0x0

    .line 62
    iput p0, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->radius:I

    return-object v0

    .line 63
    :cond_27
    const-string v1, "canvas_image"

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 64
    sget-object v1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->IMAGE:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    .line 65
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->imagePath:Ljava/lang/String;

    iput-object p0, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->imagePath:Ljava/lang/String;

    return-object v0

    .line 66
    :cond_3e
    const-string v1, "canvas_blur"

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 67
    sget-object v1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->VIDEOFRAME:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    .line 68
    iget p0, p0, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->blur:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->radius:I

    :cond_58
    return-object v0
.end method
