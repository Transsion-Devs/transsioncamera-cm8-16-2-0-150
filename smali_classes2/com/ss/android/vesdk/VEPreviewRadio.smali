.class public final enum Lcom/ss/android/vesdk/VEPreviewRadio;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEPreviewRadio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEPreviewRadio;

.field public static final enum RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

.field public static final enum RADIO_3_4:Lcom/ss/android/vesdk/VEPreviewRadio;

.field public static final enum RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

.field public static final enum RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

.field public static final enum RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 10
    new-instance v0, Lcom/ss/android/vesdk/VEPreviewRadio;

    const-string v1, "RADIO_9_16"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEPreviewRadio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_9_16:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 15
    new-instance v1, Lcom/ss/android/vesdk/VEPreviewRadio;

    const-string v2, "RADIO_3_4"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEPreviewRadio;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_3_4:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 20
    new-instance v2, Lcom/ss/android/vesdk/VEPreviewRadio;

    const-string v3, "RADIO_1_1"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEPreviewRadio;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 25
    new-instance v3, Lcom/ss/android/vesdk/VEPreviewRadio;

    const-string v4, "RADIO_FULL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEPreviewRadio;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_FULL:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 30
    new-instance v4, Lcom/ss/android/vesdk/VEPreviewRadio;

    const-string v5, "RADIO_ROUND"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEPreviewRadio;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/vesdk/VEPreviewRadio;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->$VALUES:[Lcom/ss/android/vesdk/VEPreviewRadio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEPreviewRadio;
    .registers 2

    .line 6
    const-class v0, Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEPreviewRadio;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEPreviewRadio;
    .registers 1

    .line 6
    sget-object v0, Lcom/ss/android/vesdk/VEPreviewRadio;->$VALUES:[Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEPreviewRadio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEPreviewRadio;

    return-object v0
.end method
