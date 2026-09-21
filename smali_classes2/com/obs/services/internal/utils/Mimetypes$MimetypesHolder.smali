.class Lcom/obs/services/internal/utils/Mimetypes$MimetypesHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/utils/Mimetypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MimetypesHolder"
.end annotation


# static fields
.field private static mimetypes:Lcom/obs/services/internal/utils/Mimetypes;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 480
    new-instance v0, Lcom/obs/services/internal/utils/Mimetypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/obs/services/internal/utils/Mimetypes;-><init>(Lcom/obs/services/internal/utils/Mimetypes$1;)V

    sput-object v0, Lcom/obs/services/internal/utils/Mimetypes$MimetypesHolder;->mimetypes:Lcom/obs/services/internal/utils/Mimetypes;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/obs/services/internal/utils/Mimetypes;
    .registers 1

    .line 479
    sget-object v0, Lcom/obs/services/internal/utils/Mimetypes$MimetypesHolder;->mimetypes:Lcom/obs/services/internal/utils/Mimetypes;

    return-object v0
.end method
