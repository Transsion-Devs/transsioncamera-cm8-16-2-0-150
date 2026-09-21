.class public final enum Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCALE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_CANVAS:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_CENTER_INSIDE_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_FIT_END_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

.field public static final enum SCALE_MODE_FIT_START_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 423
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const-string v1, "SCALE_MODE_CENTER_INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 427
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const-string v2, "SCALE_MODE_CENTER_CROP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_CROP:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 431
    new-instance v2, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const-string v3, "SCALE_MODE_CENTER_INSIDE_WITH_2DENGINE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CENTER_INSIDE_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 435
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const-string v4, "SCALE_MODE_FIT_START_WITH_2DENGINE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_FIT_START_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 439
    new-instance v4, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const-string v5, "SCALE_MODE_FIT_END_WITH_2DENGINE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_FIT_END_WITH_2DENGINE:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 443
    new-instance v5, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    const-string v6, "SCALE_MODE_CANVAS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CANVAS:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    .line 419
    filled-new-array/range {v0 .. v5}, [Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;
    .registers 2

    .line 419
    const-class v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;
    .registers 1

    .line 419
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    return-object v0
.end method
