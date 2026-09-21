.class public final Lcom/volcengine/ck/highlight/config/HLInternalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/volcengine/ck/highlight/config/HLInternalConfig;

.field public static final bitmapMaxSize:I = 0x2d0


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/config/HLInternalConfig;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/config/HLInternalConfig;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/config/HLInternalConfig;->INSTANCE:Lcom/volcengine/ck/highlight/config/HLInternalConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
