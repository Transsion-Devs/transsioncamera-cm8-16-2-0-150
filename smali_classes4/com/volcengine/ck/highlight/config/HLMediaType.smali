.class public final Lcom/volcengine/ck/highlight/config/HLMediaType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE:I = 0x1

.field public static final INSTANCE:Lcom/volcengine/ck/highlight/config/HLMediaType;

.field public static final UNKNOWN:I = 0x0

.field public static final VIDEO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/config/HLMediaType;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/config/HLMediaType;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/config/HLMediaType;->INSTANCE:Lcom/volcengine/ck/highlight/config/HLMediaType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
