.class public final Lorg/koin/core/time/Timer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/time/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lorg/koin/core/time/Timer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final start()Lorg/koin/core/time/Timer;
    .registers 1

    .line 29
    new-instance p0, Lorg/koin/core/time/Timer;

    invoke-direct {p0}, Lorg/koin/core/time/Timer;-><init>()V

    return-object p0
.end method
