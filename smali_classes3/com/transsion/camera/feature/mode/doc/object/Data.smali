.class public Lcom/transsion/camera/feature/mode/doc/object/Data;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static defaultLineColor:[F

.field public static itelLineColor:[F

.field public static lineCoords:[F

.field public static pointColor:[F

.field public static pointCoords:[F

.field public static shadowColor:[F

.field public static tecnoLineColor:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 5
    new-array v0, v0, [F

    fill-array-data v0, :array_36

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    const/16 v0, 0x24

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_4a

    sput-object v1, Lcom/transsion/camera/feature/mode/doc/object/Data;->defaultLineColor:[F

    .line 25
    new-array v1, v0, [F

    fill-array-data v1, :array_96

    sput-object v1, Lcom/transsion/camera/feature/mode/doc/object/Data;->tecnoLineColor:[F

    .line 38
    new-array v1, v0, [F

    fill-array-data v1, :array_e2

    sput-object v1, Lcom/transsion/camera/feature/mode/doc/object/Data;->itelLineColor:[F

    .line 50
    new-array v0, v0, [F

    fill-array-data v0, :array_12e

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->shadowColor:[F

    const/4 v0, 0x0

    .line 62
    new-array v0, v0, [F

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->pointCoords:[F

    const/16 v0, 0xc

    .line 66
    new-array v0, v0, [F

    fill-array-data v0, :array_17a

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->pointColor:[F

    return-void

    :array_36
    .array-data 4
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        -0x40c00000    # -0.75f
        0x3f400000    # 0.75f
        -0x4099999a    # -0.9f
        0x0
        0x3f400000    # 0.75f
        0x0
    .end array-data

    :array_4a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_96
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f70a3d7    # 0.94f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_12e
    .array-data 4
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
    .end array-data

    :array_17a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
