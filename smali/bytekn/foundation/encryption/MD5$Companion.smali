.class public final Lbytekn/foundation/encryption/MD5$Companion;
.super Lbytekn/foundation/encryption/HasherFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/encryption/MD5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 12
    sget-object v0, Lbytekn/foundation/encryption/MD5$Companion$1;->INSTANCE:Lbytekn/foundation/encryption/MD5$Companion$1;

    invoke-direct {p0, v0}, Lbytekn/foundation/encryption/HasherFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lbytekn/foundation/encryption/MD5$Companion;-><init>()V

    return-void
.end method
