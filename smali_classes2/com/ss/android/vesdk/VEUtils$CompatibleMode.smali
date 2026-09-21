.class public final enum Lcom/ss/android/vesdk/VEUtils$CompatibleMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompatibleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEUtils$CompatibleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

.field public static final enum Fill_silence:Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

.field public static final enum Legacy:Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

.field public static final enum Skip_invalid:Lcom/ss/android/vesdk/VEUtils$CompatibleMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 2257
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    const-string v1, "Legacy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;->Legacy:Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    new-instance v1, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    const-string v2, "Skip_invalid"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;->Skip_invalid:Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    new-instance v2, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    const-string v3, "Fill_silence"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;->Fill_silence:Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    .line 2256
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;->$VALUES:[Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$CompatibleMode;
    .registers 2

    .line 2256
    const-class v0, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEUtils$CompatibleMode;
    .registers 1

    .line 2256
    sget-object v0, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;->$VALUES:[Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEUtils$CompatibleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    return-object v0
.end method
