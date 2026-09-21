.class public Lcom/ss/android/vesdk/VEEqualizerParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEEqualizerParams$Presets;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEEqualizerParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public amp1000:F

.field public amp125:F

.field public amp16000:F

.field public amp2000:F

.field public amp250:F

.field public amp31:F

.field public amp4000:F

.field public amp500:F

.field public amp63:F

.field public amp8000:F

.field public freqWidth1000:F

.field public freqWidth125:F

.field public freqWidth16000:F

.field public freqWidth2000:F

.field public freqWidth250:F

.field public freqWidth31:F

.field public freqWidth4000:F

.field public freqWidth500:F

.field public freqWidth63:F

.field public freqWidth8000:F

.field public name:Ljava/lang/String;

.field public preamp:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 380
    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEqualizerParams$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    .line 15
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 18
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 19
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 20
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 21
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 22
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 23
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 24
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 25
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 26
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 29
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 30
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 31
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 32
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 33
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 34
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 35
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 36
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 37
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method private constructor <init>(FFFFFFFFFFF)V
    .registers 13

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 18
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 19
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 20
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 21
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 22
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 23
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 24
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 25
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 26
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    .line 98
    const-string v0, "custom"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    .line 99
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    .line 101
    iput p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 102
    iput p3, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 103
    iput p4, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 104
    iput p5, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 105
    iput p6, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 106
    iput p7, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 107
    iput p8, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 108
    iput p9, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 109
    iput p10, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 110
    iput p11, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method private constructor <init>(FFFFFFFFFFFFFFFFFFFFF)V
    .registers 23

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "custom"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    .line 62
    iput p11, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    .line 64
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 65
    iput p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 66
    iput p3, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 67
    iput p4, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 68
    iput p5, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 69
    iput p6, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 70
    iput p7, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 71
    iput p8, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 72
    iput p9, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 73
    iput p10, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    .line 75
    iput p12, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 76
    iput p13, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 77
    iput p14, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    move/from16 p1, p15

    .line 78
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    move/from16 p1, p16

    .line 79
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    move/from16 p1, p17

    .line 80
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    move/from16 p1, p18

    .line 81
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    move/from16 p1, p19

    .line 82
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    move/from16 p1, p20

    .line 83
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    move/from16 p1, p21

    .line 84
    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method synthetic constructor <init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V
    .registers 13

    .line 12
    invoke-direct/range {p0 .. p11}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFF)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    .line 15
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 18
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 19
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 20
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 21
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 22
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 23
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 24
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 25
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 26
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 29
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 30
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 31
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 32
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 33
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 34
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 35
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 36
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 37
    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEqualizerParams;
    .registers 3

    .line 175
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 177
    :try_start_6
    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>()V

    const/4 v1, 0x0

    .line 179
    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 180
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    const/4 v1, 0x2

    .line 182
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    const/4 v1, 0x3

    .line 183
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    const/4 v1, 0x4

    .line 184
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    const/4 v1, 0x5

    .line 185
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    const/4 v1, 0x6

    .line 186
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    const/4 v1, 0x7

    .line 187
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    const/16 v1, 0x8

    .line 188
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    const/16 v1, 0x9

    .line 189
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    const/16 v1, 0xa

    .line 190
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    const/16 v1, 0xb

    .line 191
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    const/16 v1, 0xc

    .line 193
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    const/16 v1, 0xd

    .line 194
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    const/16 v1, 0xe

    .line 195
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    const/16 v1, 0xf

    .line 196
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    const/16 v1, 0x10

    .line 197
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    const/16 v1, 0x11

    .line 198
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    const/16 v1, 0x12

    .line 199
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    const/16 v1, 0x13

    .line 200
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    const/16 v1, 0x14

    .line 201
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    const/16 v1, 0x15

    .line 202
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_db} :catch_dc

    return-object v0

    :catch_dc
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/ss/android/vesdk/VEEqualizerParams;
    .registers 1

    .line 215
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEqualizerParams;->getParamsAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/vesdk/VEEqualizerParams;->fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEqualizerParams;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getParamsAsString()Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget v2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEEqualizerParams{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", preamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp31="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp63="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp125="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp250="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp500="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp1000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp2000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp4000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp8000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", amp16000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth31="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth63="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth125="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth250="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth500="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth1000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth2000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth4000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth8000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", freqWidth16000="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 331
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->preamp:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 333
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth31:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 334
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth63:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 335
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth125:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 336
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth250:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 337
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth500:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 338
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth1000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 339
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth2000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 340
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth4000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 341
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth8000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 342
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->freqWidth16000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 343
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp31:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 344
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp63:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 345
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp125:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 346
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp250:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 347
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp500:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 348
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp1000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 349
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp2000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 350
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp4000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 351
    iget p2, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp8000:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 352
    iget p0, p0, Lcom/ss/android/vesdk/VEEqualizerParams;->amp16000:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
