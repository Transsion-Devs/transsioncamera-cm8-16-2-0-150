.class public final enum Lcom/ss/android/vesdk/VEEditor$TIME_MODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TIME_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$TIME_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

.field public static final enum EDITOR_NORMAl_MODE:Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

.field public static final enum EDITOR_SLOMO_MODE:Lcom/ss/android/vesdk/VEEditor$TIME_MODE;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 762
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    const-string v1, "EDITOR_NORMAl_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;->EDITOR_NORMAl_MODE:Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    .line 767
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    const-string v2, "EDITOR_SLOMO_MODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;->EDITOR_SLOMO_MODE:Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    .line 758
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 758
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$TIME_MODE;
    .registers 2

    .line 758
    const-class v0, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$TIME_MODE;
    .registers 1

    .line 758
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$TIME_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$TIME_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$TIME_MODE;

    return-object v0
.end method
