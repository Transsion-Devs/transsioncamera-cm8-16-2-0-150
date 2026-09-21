.class public final enum Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/base_business/vss_sdk/VSSConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

.field public static final enum CAMERA_TYPE:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

.field public static final enum EFFECT_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

.field public static final enum FILTER_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

.field public static final enum FILTER_INTENSITY:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

.field public static final enum FRAME_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

.field public static final enum ROTATE_DEGREE:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;


# instance fields
.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;
    .registers 6

    .line 9
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->CAMERA_TYPE:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget-object v1, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->ROTATE_DEGREE:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget-object v2, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FILTER_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget-object v3, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->EFFECT_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget-object v4, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FRAME_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    sget-object v5, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FILTER_INTENSITY:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 11
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    const/4 v1, 0x0

    const/16 v2, 0x101

    const-string v3, "CAMERA_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->CAMERA_TYPE:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    .line 12
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    const/4 v1, 0x1

    const/16 v2, 0x102

    const-string v3, "ROTATE_DEGREE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->ROTATE_DEGREE:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    .line 13
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    const/4 v1, 0x2

    const/16 v2, 0x103

    const-string v3, "FILTER_INDEX"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FILTER_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    .line 14
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    const/4 v1, 0x3

    const/16 v2, 0x104

    const-string v3, "EFFECT_INDEX"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->EFFECT_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    .line 15
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    const/4 v1, 0x4

    const/16 v2, 0x105

    const-string v3, "FRAME_INDEX"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FRAME_INDEX:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    .line 16
    new-instance v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    const/4 v1, 0x5

    const/16 v2, 0x106

    const-string v3, "FILTER_INTENSITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->FILTER_INTENSITY:Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    .line 9
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->$values()[Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->$VALUES:[Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;
    .registers 2

    .line 9
    const-class v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;
    .registers 1

    .line 9
    sget-object v0, Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->$VALUES:[Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    invoke-virtual {v0}, [Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/base_business/vss_sdk/VSSConstant$Feature;

    return-object v0
.end method
