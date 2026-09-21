.class public final enum Lcom/ss/android/vesdk/VEUtils$Resolution;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEUtils$Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEUtils$Resolution;

.field public static final enum RES_1080P:Lcom/ss/android/vesdk/VEUtils$Resolution;

.field public static final enum RES_4K:Lcom/ss/android/vesdk/VEUtils$Resolution;

.field public static final enum RES_720P:Lcom/ss/android/vesdk/VEUtils$Resolution;

.field public static final enum RES_RANDOM:Lcom/ss/android/vesdk/VEUtils$Resolution;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 2249
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$Resolution;

    const-string v1, "RES_RANDOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUtils$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEUtils$Resolution;->RES_RANDOM:Lcom/ss/android/vesdk/VEUtils$Resolution;

    new-instance v1, Lcom/ss/android/vesdk/VEUtils$Resolution;

    const-string v2, "RES_720P"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEUtils$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEUtils$Resolution;->RES_720P:Lcom/ss/android/vesdk/VEUtils$Resolution;

    new-instance v2, Lcom/ss/android/vesdk/VEUtils$Resolution;

    const-string v3, "RES_1080P"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEUtils$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEUtils$Resolution;->RES_1080P:Lcom/ss/android/vesdk/VEUtils$Resolution;

    new-instance v3, Lcom/ss/android/vesdk/VEUtils$Resolution;

    const-string v4, "RES_4K"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEUtils$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEUtils$Resolution;->RES_4K:Lcom/ss/android/vesdk/VEUtils$Resolution;

    .line 2248
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/VEUtils$Resolution;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEUtils$Resolution;->$VALUES:[Lcom/ss/android/vesdk/VEUtils$Resolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$Resolution;
    .registers 2

    .line 2248
    const-class v0, Lcom/ss/android/vesdk/VEUtils$Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUtils$Resolution;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEUtils$Resolution;
    .registers 1

    .line 2248
    sget-object v0, Lcom/ss/android/vesdk/VEUtils$Resolution;->$VALUES:[Lcom/ss/android/vesdk/VEUtils$Resolution;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEUtils$Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEUtils$Resolution;

    return-object v0
.end method
