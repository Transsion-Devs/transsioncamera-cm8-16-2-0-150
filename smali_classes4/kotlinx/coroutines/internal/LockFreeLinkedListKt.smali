.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONDITION_FALSE:Ljava/lang/Object;

.field public static final FAILURE:I = 0x2

.field public static final SUCCESS:I = 0x1

.field public static final UNDECIDED:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    return-void
.end method

.method public static final getCONDITION_FALSE()Ljava/lang/Object;
    .registers 1

    .line 21
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getCONDITION_FALSE$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getFAILURE$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getSUCCESS$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getUNDECIDED$annotations()V
    .registers 0

    return-void
.end method
