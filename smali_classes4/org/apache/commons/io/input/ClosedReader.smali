.class public Lorg/apache/commons/io/input/ClosedReader;
.super Ljava/io/Reader;
.source "SourceFile"


# static fields
.field public static final CLOSED_READER:Lorg/apache/commons/io/input/ClosedReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lorg/apache/commons/io/input/ClosedReader;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedReader;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/ClosedReader;->CLOSED_READER:Lorg/apache/commons/io/input/ClosedReader;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public read([CII)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method
