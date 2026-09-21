.class public final enum Lcom/ss/android/vesdk/VERecordMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VERecordMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum AUDIO:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum CUSTOM_VIDEO_BG:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum CUSTOM_VIDEO_BG_GIF:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum DEFAULT:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum DUET:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum DUET_KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum REACTION:Lcom/ss/android/vesdk/VERecordMode;

.field public static final enum SCREEN:Lcom/ss/android/vesdk/VERecordMode;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 7
    new-instance v0, Lcom/ss/android/vesdk/VERecordMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VERecordMode;->DEFAULT:Lcom/ss/android/vesdk/VERecordMode;

    .line 12
    new-instance v1, Lcom/ss/android/vesdk/VERecordMode;

    const-string v2, "DUET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    .line 17
    new-instance v2, Lcom/ss/android/vesdk/VERecordMode;

    const-string v3, "REACTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    .line 22
    new-instance v3, Lcom/ss/android/vesdk/VERecordMode;

    const-string v4, "CUSTOM_VIDEO_BG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VERecordMode;->CUSTOM_VIDEO_BG:Lcom/ss/android/vesdk/VERecordMode;

    .line 27
    new-instance v4, Lcom/ss/android/vesdk/VERecordMode;

    const-string v5, "DUET_KARAOKE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VERecordMode;->DUET_KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    .line 32
    new-instance v5, Lcom/ss/android/vesdk/VERecordMode;

    const-string v6, "KARAOKE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    .line 38
    new-instance v6, Lcom/ss/android/vesdk/VERecordMode;

    const-string v7, "KARAOKE_PURE_AUDIO"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    .line 44
    new-instance v7, Lcom/ss/android/vesdk/VERecordMode;

    const-string v8, "CUSTOM_VIDEO_BG_GIF"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/vesdk/VERecordMode;->CUSTOM_VIDEO_BG_GIF:Lcom/ss/android/vesdk/VERecordMode;

    .line 50
    new-instance v8, Lcom/ss/android/vesdk/VERecordMode;

    const-string v9, "AUDIO"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ss/android/vesdk/VERecordMode;->AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    .line 55
    new-instance v9, Lcom/ss/android/vesdk/VERecordMode;

    const-string v10, "SCREEN"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/ss/android/vesdk/VERecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ss/android/vesdk/VERecordMode;->SCREEN:Lcom/ss/android/vesdk/VERecordMode;

    .line 3
    filled-new-array/range {v0 .. v9}, [Lcom/ss/android/vesdk/VERecordMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VERecordMode;->$VALUES:[Lcom/ss/android/vesdk/VERecordMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VERecordMode;
    .registers 2

    .line 3
    const-class v0, Lcom/ss/android/vesdk/VERecordMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VERecordMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VERecordMode;
    .registers 1

    .line 3
    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->$VALUES:[Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VERecordMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VERecordMode;

    return-object v0
.end method
