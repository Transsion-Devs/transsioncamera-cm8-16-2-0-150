.class public abstract Lbytekn/foundation/utils/StringExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbytekn/foundation/utils/StringExtension$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lbytekn/foundation/utils/StringExtension$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbytekn/foundation/utils/StringExtension$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/utils/StringExtension$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbytekn/foundation/utils/StringExtension;->Companion:Lbytekn/foundation/utils/StringExtension$Companion;

    return-void
.end method
