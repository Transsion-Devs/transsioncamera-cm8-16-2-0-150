.class final Lbytekn/foundation/encryption/MD5$Companion$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbytekn/foundation/encryption/MD5$Companion;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lbytekn/foundation/encryption/MD5$Companion$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbytekn/foundation/encryption/MD5$Companion$1;

    invoke-direct {v0}, Lbytekn/foundation/encryption/MD5$Companion$1;-><init>()V

    sput-object v0, Lbytekn/foundation/encryption/MD5$Companion$1;->INSTANCE:Lbytekn/foundation/encryption/MD5$Companion$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lbytekn/foundation/encryption/MD5;
    .registers 1

    .line 12
    new-instance p0, Lbytekn/foundation/encryption/MD5;

    invoke-direct {p0}, Lbytekn/foundation/encryption/MD5;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lbytekn/foundation/encryption/MD5$Companion$1;->invoke()Lbytekn/foundation/encryption/MD5;

    move-result-object p0

    return-object p0
.end method
