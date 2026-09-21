.class public final enum Lcom/ss/android/vesdk/VEUtils$AVFileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEUtils$AVFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEUtils$AVFileType;

.field public static final enum type_Audio:Lcom/ss/android/vesdk/VEUtils$AVFileType;

.field public static final enum type_AudioVideo:Lcom/ss/android/vesdk/VEUtils$AVFileType;

.field public static final enum type_Camera:Lcom/ss/android/vesdk/VEUtils$AVFileType;

.field public static final enum type_Color:Lcom/ss/android/vesdk/VEUtils$AVFileType;

.field public static final enum type_Image:Lcom/ss/android/vesdk/VEUtils$AVFileType;

.field public static final enum type_ImageVideo:Lcom/ss/android/vesdk/VEUtils$AVFileType;

.field public static final enum type_Unknown:Lcom/ss/android/vesdk/VEUtils$AVFileType;

.field public static final enum type_Video:Lcom/ss/android/vesdk/VEUtils$AVFileType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 67
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    const/4 v1, -0x1

    const-string v2, "type_Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ss/android/vesdk/VEUtils$AVFileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_Unknown:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    .line 68
    new-instance v1, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    const-string v2, "type_AudioVideo"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/ss/android/vesdk/VEUtils$AVFileType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_AudioVideo:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    .line 69
    new-instance v2, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    const-string v3, "type_Video"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/ss/android/vesdk/VEUtils$AVFileType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_Video:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    .line 70
    new-instance v3, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    const-string v4, "type_Audio"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/ss/android/vesdk/VEUtils$AVFileType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_Audio:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    .line 71
    new-instance v4, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    const-string v5, "type_Image"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/ss/android/vesdk/VEUtils$AVFileType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_Image:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    .line 72
    new-instance v5, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    const-string v6, "type_Camera"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/ss/android/vesdk/VEUtils$AVFileType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_Camera:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    .line 73
    new-instance v6, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    const-string v7, "type_Color"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lcom/ss/android/vesdk/VEUtils$AVFileType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_Color:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    .line 74
    new-instance v7, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    const-string v8, "type_ImageVideo"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lcom/ss/android/vesdk/VEUtils$AVFileType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_ImageVideo:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    .line 66
    filled-new-array/range {v0 .. v7}, [Lcom/ss/android/vesdk/VEUtils$AVFileType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEUtils$AVFileType;->$VALUES:[Lcom/ss/android/vesdk/VEUtils$AVFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/ss/android/vesdk/VEUtils$AVFileType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$AVFileType;
    .registers 2

    .line 66
    const-class v0, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUtils$AVFileType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEUtils$AVFileType;
    .registers 1

    .line 66
    sget-object v0, Lcom/ss/android/vesdk/VEUtils$AVFileType;->$VALUES:[Lcom/ss/android/vesdk/VEUtils$AVFileType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEUtils$AVFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEUtils$AVFileType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/ss/android/vesdk/VEUtils$AVFileType;->value:I

    return p0
.end method
