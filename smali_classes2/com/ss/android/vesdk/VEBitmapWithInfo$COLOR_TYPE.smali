.class public final enum Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEBitmapWithInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLOR_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

.field public static final enum BT2020_HLG:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

.field public static final enum BT2020_PQ:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

.field public static final enum BT601:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

.field public static final enum BT709:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

.field public static final enum UNKNOWN:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 27
    new-instance v0, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->UNKNOWN:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    .line 28
    new-instance v1, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    const-string v2, "BT601"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->BT601:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    .line 29
    new-instance v2, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    const-string v3, "BT709"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->BT709:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    .line 30
    new-instance v3, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    const-string v4, "BT2020_PQ"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->BT2020_PQ:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    .line 31
    new-instance v4, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    const-string v5, "BT2020_HLG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->BT2020_HLG:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    .line 26
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->$VALUES:[Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;
    .registers 2

    .line 26
    const-class v0, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;
    .registers 1

    .line 26
    sget-object v0, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->$VALUES:[Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    return-object v0
.end method
