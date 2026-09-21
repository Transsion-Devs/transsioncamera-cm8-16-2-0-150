.class public final enum Lcom/ss/android/medialib/AVCEncoder$kCodecType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/AVCEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "kCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/medialib/AVCEncoder$kCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/medialib/AVCEncoder$kCodecType;

.field public static final enum ByteVC1:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

.field public static final enum H264:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

.field public static final enum MPEG4:Lcom/ss/android/medialib/AVCEncoder$kCodecType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 55
    new-instance v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    const-string v1, "H264"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/medialib/AVCEncoder$kCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->H264:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    .line 56
    new-instance v1, Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    const-string v2, "ByteVC1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/medialib/AVCEncoder$kCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->ByteVC1:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    .line 57
    new-instance v2, Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    const-string v3, "MPEG4"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/medialib/AVCEncoder$kCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->MPEG4:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    .line 54
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->$VALUES:[Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/medialib/AVCEncoder$kCodecType;
    .registers 2

    .line 54
    const-class v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/medialib/AVCEncoder$kCodecType;
    .registers 1

    .line 54
    sget-object v0, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->$VALUES:[Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    invoke-virtual {v0}, [Lcom/ss/android/medialib/AVCEncoder$kCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    return-object v0
.end method
