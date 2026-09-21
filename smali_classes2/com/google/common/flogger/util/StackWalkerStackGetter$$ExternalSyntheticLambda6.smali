.class public final synthetic Lcom/google/common/flogger/util/StackWalkerStackGetter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/google/common/flogger/util/StackWalkerStackGetter;->$r8$lambda$nuePAfe5v2IRGOarsJ8LQ-K52Ck(I)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
