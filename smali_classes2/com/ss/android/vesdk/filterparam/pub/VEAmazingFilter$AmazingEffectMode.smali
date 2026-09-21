.class public final enum Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AmazingEffectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

.field public static final enum Canvas:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

.field public static final enum Default:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

.field public static final enum MixedAll:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

.field public static final enum VideoFrame:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 29
    new-instance v0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    const-string v1, "Canvas"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;->Canvas:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    new-instance v1, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    const-string v2, "Default"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;->Default:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    new-instance v2, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    const-string v3, "MixedAll"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;->MixedAll:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    new-instance v3, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    const-string v4, "VideoFrame"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;->VideoFrame:Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    .line 28
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;->$VALUES:[Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;
    .registers 2

    .line 28
    const-class v0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;
    .registers 1

    .line 28
    sget-object v0, Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;->$VALUES:[Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/filterparam/pub/VEAmazingFilter$AmazingEffectMode;

    return-object v0
.end method
