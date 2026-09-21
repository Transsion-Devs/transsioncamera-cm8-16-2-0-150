.class public final enum Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

.field public static final enum TransitionType_DEFAULT:Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

.field public static final enum TransitionType_SINGLE:Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

.field public static final enum TransitionType_VARIABLE_TIME:Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 22
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    const-string v1, "TransitionType_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;->TransitionType_DEFAULT:Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    .line 26
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    const-string v2, "TransitionType_VARIABLE_TIME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;->TransitionType_VARIABLE_TIME:Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    .line 30
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    const-string v3, "TransitionType_SINGLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;->TransitionType_SINGLE:Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    .line 17
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;->$VALUES:[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;
    .registers 2

    .line 17
    const-class v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;
    .registers 1

    .line 17
    sget-object v0, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;->$VALUES:[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam$TransitionType;

    return-object v0
.end method
