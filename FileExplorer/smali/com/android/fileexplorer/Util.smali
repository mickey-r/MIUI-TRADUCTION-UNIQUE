.class public Lcom/android/fileexplorer/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/Util$SDCardInfo;
    }
.end annotation


# static fields
.field private static ANDROID_SECURE:Ljava/lang/String;

.field private static SysFileDirs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "/mnt/sdcard/.android_secure"

    sput-object v0, Lcom/android/fileexplorer/Util;->ANDROID_SECURE:Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "miren_browser/imagecaches"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/fileexplorer/Util;->SysFileDirs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method public static GetFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/FileInfo;
    .locals 11
    .parameter "f"
    .parameter "filter"
    .parameter "showHidden"

    .prologue
    .line 85
    new-instance v7, Lcom/android/fileexplorer/FileInfo;

    invoke-direct {v7}, Lcom/android/fileexplorer/FileInfo;-><init>()V

    .line 86
    .local v7, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, filePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, lFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->canRead:Z

    .line 89
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->canWrite:Z

    .line 90
    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->isHidden:Z

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    .line 92
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    .line 93
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v9

    iput-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    .line 94
    iput-object v2, v7, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    .line 95
    iget-boolean v9, v7, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v9, :cond_4

    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, lCount:I
    invoke-virtual {v6, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 100
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_0

    .line 101
    const/4 v9, 0x0

    .line 117
    .end local v3           #files:[Ljava/io/File;
    .end local v5           #lCount:I
    :goto_0
    return-object v9

    .line 104
    .restart local v3       #files:[Ljava/io/File;
    .restart local v5       #lCount:I
    :cond_0
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v8, :cond_3

    aget-object v1, v0, v4

    .line 105
    .local v1, child:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/fileexplorer/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 104
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    .end local v1           #child:Ljava/io/File;
    :cond_3
    iput v5, v7, Lcom/android/fileexplorer/FileInfo;->Count:I

    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #lCount:I
    .end local v8           #len$:I
    :goto_2
    move-object v9, v7

    .line 117
    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    goto :goto_2
.end method

.method public static GetFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/FileInfo;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, lFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    .line 72
    :cond_0
    new-instance v1, Lcom/android/fileexplorer/FileInfo;

    invoke-direct {v1}, Lcom/android/fileexplorer/FileInfo;-><init>()V

    .line 73
    .local v1, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->canRead:Z

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->canWrite:Z

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->isHidden:Z

    .line 76
    invoke-static {p0}, Lcom/android/fileexplorer/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    .line 79
    iput-object p0, v1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    move-object v2, v1

    .line 81
    goto :goto_0
.end method

.method public static containsPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 39
    move-object v0, p1

    .line 40
    .local v0, path:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 49
    :goto_1
    return v1

    .line 44
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 46
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertStorage(J)Ljava/lang/String;
    .locals 12
    .parameter "size"

    .prologue
    const-wide/16 v7, 0x400

    const/high16 v10, 0x42c8

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 305
    const-wide/16 v3, 0x400

    .line 306
    .local v3, kb:J
    mul-long v5, v3, v7

    .line 307
    .local v5, mb:J
    mul-long v1, v5, v7

    .line 309
    .local v1, gb:J
    cmp-long v7, p0, v1

    if-ltz v7, :cond_0

    .line 310
    const-string v7, "%.1f GB"

    new-array v8, v9, [Ljava/lang/Object;

    long-to-float v9, p0

    long-to-float v10, v1

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 318
    :goto_0
    return-object v7

    .line 311
    :cond_0
    cmp-long v7, p0, v5

    if-ltz v7, :cond_2

    .line 312
    long-to-float v7, p0

    long-to-float v8, v5

    div-float v0, v7, v8

    .line 313
    .local v0, f:F
    cmpl-float v7, v0, v10

    if-lez v7, :cond_1

    const-string v7, "%.0f MB"

    :goto_1
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    const-string v7, "%.1f MB"

    goto :goto_1

    .line 314
    .end local v0           #f:F
    :cond_2
    cmp-long v7, p0, v3

    if-ltz v7, :cond_4

    .line 315
    long-to-float v7, p0

    long-to-float v8, v3

    div-float v0, v7, v8

    .line 316
    .restart local v0       #f:F
    cmpl-float v7, v0, v10

    if-lez v7, :cond_3

    const-string v7, "%.0f KB"

    :goto_2
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const-string v7, "%.1f KB"

    goto :goto_2

    .line 318
    .end local v0           #f:F
    :cond_4
    const-string v7, "%d B"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 168
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    const-string p1, "Util"

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFile: file not exist or is directory, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 p0, 0x0

    .line 223
    .end local v3           #file:Ljava/io/File;
    :goto_0
    return-object p0

    .line 173
    .restart local v3       #file:Ljava/io/File;
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    .line 174
    .local v0, fi:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 176
    .local v4, fo:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 177
    .end local v0           #fi:Ljava/io/FileInputStream;
    .local v2, fi:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, destPlace:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v0

    .end local v0           #destPlace:Ljava/io/File;
    if-nez v0, :cond_4

    .line 180
    const/4 p1, 0x0

    .line 214
    .end local p1
    if-eqz v2, :cond_2

    .line 215
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 216
    :cond_2
    if-eqz v4, :cond_3

    .line 217
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local p0
    :cond_3
    :goto_1
    move-object p0, p1

    .line 220
    goto :goto_0

    .line 218
    .restart local p0
    :catch_0
    move-exception p0

    .line 219
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 183
    .local p0, src:Ljava/lang/String;
    .restart local p1
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, destPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, destFile:Ljava/io/File;
    const/4 v5, 0x1

    .local v5, i:I
    move v6, v5

    .line 186
    .end local v5           #i:I
    .local v6, i:I
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #destFile:Ljava/io/File;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .end local v1           #destPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/fileexplorer/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/Util;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, destName:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .restart local v1       #destPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #destName:Ljava/lang/String;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, destFile:Ljava/io/File;
    move v6, v5

    .line 191
    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_2

    .line 193
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-result p1

    .end local p1
    if-nez p1, :cond_8

    .line 194
    const/4 p1, 0x0

    .line 214
    if-eqz v2, :cond_6

    .line 215
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 216
    :cond_6
    if-eqz v4, :cond_7

    .line 217
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local p0           #src:Ljava/lang/String;
    :cond_7
    :goto_3
    move-object p0, p1

    .line 220
    goto/16 :goto_0

    .line 218
    .restart local p0       #src:Ljava/lang/String;
    :catch_1
    move-exception p0

    .line 219
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 196
    .local p0, src:Ljava/lang/String;
    :cond_8
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3           #file:Ljava/io/File;
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 197
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .local v3, fo:Ljava/io/FileOutputStream;
    const v0, 0x19000

    .line 198
    .local v0, count:I
    :try_start_6
    new-array p1, v0, [B

    .line 199
    .local p1, buffer:[B
    const/4 v4, 0x0

    .line 200
    .local v4, read:I
    :goto_4
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v0}, Ljava/io/FileInputStream;->read([BII)I

    .end local v4           #read:I
    move-result v4

    .restart local v4       #read:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    .line 201
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_4

    .line 207
    .end local v4           #read:I
    .end local p1           #buffer:[B
    :catch_2
    move-exception p1

    move-object v1, v3

    .end local v3           #fo:Ljava/io/FileOutputStream;
    .local v1, fo:Ljava/io/FileOutputStream;
    move-object v0, v2

    .line 208
    .end local v2           #fi:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .local v0, fi:Ljava/io/FileInputStream;
    .local p1, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile: file not found, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #src:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 214
    if-eqz v0, :cond_9

    .line 215
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 216
    :cond_9
    if-eqz v1, :cond_a

    .line 217
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_a
    move-object p1, v1

    .end local v1           #fo:Ljava/io/FileOutputStream;
    .local p1, fo:Ljava/io/FileOutputStream;
    move-object p0, v0

    .line 223
    .end local v0           #fi:Ljava/io/FileInputStream;
    .local p0, fi:Ljava/io/FileInputStream;
    :goto_6
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 214
    .local v0, count:I
    .local v1, destPath:Ljava/lang/String;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    .restart local v3       #fo:Ljava/io/FileOutputStream;
    .restart local v4       #read:I
    .restart local v6       #i:I
    .local p0, src:Ljava/lang/String;
    .local p1, buffer:[B
    :cond_b
    if-eqz v2, :cond_c

    .line 215
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 216
    :cond_c
    if-eqz v3, :cond_d

    .line 217
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .end local p0           #src:Ljava/lang/String;
    :cond_d
    :goto_7
    move-object p0, v1

    .line 220
    goto/16 :goto_0

    .line 218
    .restart local p0       #src:Ljava/lang/String;
    :catch_3
    move-exception p0

    .line 219
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 218
    .end local v2           #fi:Ljava/io/FileInputStream;
    .end local v3           #fo:Ljava/io/FileOutputStream;
    .end local v4           #read:I
    .end local v6           #i:I
    .end local p0           #e:Ljava/io/IOException;
    .local v0, fi:Ljava/io/FileInputStream;
    .local v1, fo:Ljava/io/FileOutputStream;
    .local p1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception p0

    .line 219
    .restart local p0       #e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .end local p1           #e:Ljava/io/FileNotFoundException;
    move-object p1, v1

    .end local v1           #fo:Ljava/io/FileOutputStream;
    .local p1, fo:Ljava/io/FileOutputStream;
    move-object p0, v0

    .line 221
    .end local v0           #fi:Ljava/io/FileInputStream;
    .local p0, fi:Ljava/io/FileInputStream;
    goto :goto_6

    .line 210
    .restart local v0       #fi:Ljava/io/FileInputStream;
    .local v3, file:Ljava/io/File;
    .local v4, fo:Ljava/io/FileOutputStream;
    .local p0, src:Ljava/lang/String;
    .local p1, dest:Ljava/lang/String;
    :catch_5
    move-exception p0

    move-object p1, v0

    .end local v0           #fi:Ljava/io/FileInputStream;
    .local p1, fi:Ljava/io/FileInputStream;
    move-object v0, v4

    .line 211
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .local v0, fo:Ljava/io/FileOutputStream;
    .local p0, e:Ljava/io/IOException;
    :goto_8
    :try_start_a
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 214
    if-eqz p1, :cond_e

    .line 215
    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 216
    :cond_e
    if-eqz v0, :cond_f

    .line 217
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_f
    move-object p0, p1

    .end local p1           #fi:Ljava/io/FileInputStream;
    .local p0, fi:Ljava/io/FileInputStream;
    move-object p1, v0

    .line 220
    .end local v0           #fo:Ljava/io/FileOutputStream;
    .local p1, fo:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 218
    .end local p0           #fi:Ljava/io/FileInputStream;
    .restart local v0       #fo:Ljava/io/FileOutputStream;
    .local p1, fi:Ljava/io/FileInputStream;
    :catch_6
    move-exception p0

    .line 219
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, p1

    .end local p1           #fi:Ljava/io/FileInputStream;
    .local p0, fi:Ljava/io/FileInputStream;
    move-object p1, v0

    .line 221
    .end local v0           #fo:Ljava/io/FileOutputStream;
    .local p1, fo:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 213
    .local v0, fi:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    .local p0, src:Ljava/lang/String;
    .local p1, dest:Ljava/lang/String;
    :catchall_0
    move-exception p0

    move-object p1, v4

    .end local v4           #fo:Ljava/io/FileOutputStream;
    .local p1, fo:Ljava/io/FileOutputStream;
    move-object v7, p0

    move-object p0, v0

    .end local v0           #fi:Ljava/io/FileInputStream;
    .local p0, fi:Ljava/io/FileInputStream;
    move-object v0, v7

    .line 214
    .end local v3           #file:Ljava/io/File;
    :goto_9
    if-eqz p0, :cond_10

    .line 215
    :try_start_c
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 216
    :cond_10
    if-eqz p1, :cond_11

    .line 217
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 220
    .end local p0           #fi:Ljava/io/FileInputStream;
    :cond_11
    :goto_a
    throw v0

    .line 218
    .restart local p0       #fi:Ljava/io/FileInputStream;
    :catch_7
    move-exception p0

    .line 219
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 213
    .end local p1           #fo:Ljava/io/FileOutputStream;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    .local p0, src:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object v0, p0

    move-object p1, v4

    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local p1       #fo:Ljava/io/FileOutputStream;
    move-object p0, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .local p0, fi:Ljava/io/FileInputStream;
    goto :goto_9

    .end local p1           #fo:Ljava/io/FileOutputStream;
    .local v0, count:I
    .local v1, destPath:Ljava/lang/String;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    .local v3, fo:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    .local p0, src:Ljava/lang/String;
    :catchall_2
    move-exception p0

    move-object v0, p0

    move-object p1, v3

    .end local v3           #fo:Ljava/io/FileOutputStream;
    .restart local p1       #fo:Ljava/io/FileOutputStream;
    move-object p0, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .local p0, fi:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v6           #i:I
    .end local p0           #fi:Ljava/io/FileInputStream;
    .local v0, fi:Ljava/io/FileInputStream;
    .local v1, fo:Ljava/io/FileOutputStream;
    .local p1, e:Ljava/io/FileNotFoundException;
    :catchall_3
    move-exception p0

    move-object p1, v1

    .end local v1           #fo:Ljava/io/FileOutputStream;
    .local p1, fo:Ljava/io/FileOutputStream;
    move-object v7, p0

    move-object p0, v0

    .end local v0           #fi:Ljava/io/FileInputStream;
    .restart local p0       #fi:Ljava/io/FileInputStream;
    move-object v0, v7

    goto :goto_9

    .end local p0           #fi:Ljava/io/FileInputStream;
    .local v0, fo:Ljava/io/FileOutputStream;
    .local p1, fi:Ljava/io/FileInputStream;
    :catchall_4
    move-exception p0

    move-object v7, p0

    move-object p0, p1

    .end local p1           #fi:Ljava/io/FileInputStream;
    .restart local p0       #fi:Ljava/io/FileInputStream;
    move-object p1, v0

    .end local v0           #fo:Ljava/io/FileOutputStream;
    .local p1, fo:Ljava/io/FileOutputStream;
    move-object v0, v7

    goto :goto_9

    .line 210
    .end local p1           #fo:Ljava/io/FileOutputStream;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    .local p0, src:Ljava/lang/String;
    :catch_8
    move-exception p0

    move-object v0, v4

    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local v0       #fo:Ljava/io/FileOutputStream;
    move-object p1, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .local p1, fi:Ljava/io/FileInputStream;
    goto :goto_8

    .end local p1           #fi:Ljava/io/FileInputStream;
    .local v0, count:I
    .local v1, destPath:Ljava/lang/String;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    .restart local v3       #fo:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    :catch_9
    move-exception p0

    move-object v0, v3

    .end local v3           #fo:Ljava/io/FileOutputStream;
    .local v0, fo:Ljava/io/FileOutputStream;
    move-object p1, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local p1       #fi:Ljava/io/FileInputStream;
    goto :goto_8

    .line 207
    .end local v1           #destPath:Ljava/lang/String;
    .end local v6           #i:I
    .local v0, fi:Ljava/io/FileInputStream;
    .local v3, file:Ljava/io/File;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    .local p1, dest:Ljava/lang/String;
    :catch_a
    move-exception p1

    move-object v1, v4

    .end local v4           #fo:Ljava/io/FileOutputStream;
    .local v1, fo:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v0           #fi:Ljava/io/FileInputStream;
    .end local v1           #fo:Ljava/io/FileOutputStream;
    .end local v3           #file:Ljava/io/File;
    .end local p1           #dest:Ljava/lang/String;
    .restart local v2       #fi:Ljava/io/FileInputStream;
    .restart local v4       #fo:Ljava/io/FileOutputStream;
    :catch_b
    move-exception p1

    move-object v1, v4

    .end local v4           #fo:Ljava/io/FileOutputStream;
    .restart local v1       #fo:Ljava/io/FileOutputStream;
    move-object v0, v2

    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local v0       #fi:Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method public static formatDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "time"

    .prologue
    .line 378
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 380
    .local v1, dateFormat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 382
    .local v2, timeFormat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 383
    .local v0, date:Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 122
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 123
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 124
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 131
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 127
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "Util"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getDefaultFavorites()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FavoriteItem;>;"
    new-instance v1, Lcom/android/fileexplorer/FavoriteItem;

    const-string v2, "Photos MIUI Camera"

    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCIM/Camera"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Lcom/android/fileexplorer/FavoriteItem;

    const-string v2, "Carte SD"

    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v1, Lcom/android/fileexplorer/FavoriteItem;

    const-string v2, "Capture MIUI"

    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIUI"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lcom/android/fileexplorer/FavoriteItem;

    const-string v2, "Téléchargement"

    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xshare_downloads/ringtone"

    invoke-static {v3, v4}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    return-object v0
.end method

.method public static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 135
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 136
    .local v0, dotPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 137
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 143
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 144
    .local v0, dotPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filepath"

    .prologue
    .line 159
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 160
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 161
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filepath"

    .prologue
    .line 151
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 152
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSDCardInfo()Lcom/android/fileexplorer/Util$SDCardInfo;
    .locals 15

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, sDcString:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 331
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 334
    .local v10, pathFile:Ljava/io/File;
    :try_start_0
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 337
    .local v12, statfs:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v8, v13

    .line 340
    .local v8, nTotalBlocks:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 343
    .local v4, nBlocSize:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v2, v13

    .line 346
    .local v2, nAvailaBlock:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v13

    int-to-long v6, v13

    .line 348
    .local v6, nFreeBlock:J
    new-instance v1, Lcom/android/fileexplorer/Util$SDCardInfo;

    invoke-direct {v1}, Lcom/android/fileexplorer/Util$SDCardInfo;-><init>()V

    .line 350
    .local v1, info:Lcom/android/fileexplorer/Util$SDCardInfo;
    mul-long v13, v8, v4

    iput-wide v13, v1, Lcom/android/fileexplorer/Util$SDCardInfo;->total:J

    .line 353
    mul-long v13, v2, v4

    iput-wide v13, v1, Lcom/android/fileexplorer/Util$SDCardInfo;->free:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v1

    .line 361
    .end local v1           #info:Lcom/android/fileexplorer/Util$SDCardInfo;
    .end local v2           #nAvailaBlock:J
    .end local v4           #nBlocSize:J
    .end local v6           #nFreeBlock:J
    .end local v8           #nTotalBlocks:J
    .end local v10           #pathFile:Ljava/io/File;
    .end local v12           #statfs:Landroid/os/StatFs;
    :goto_0
    return-object v13

    .line 356
    .restart local v10       #pathFile:Ljava/io/File;
    :catch_0
    move-exception v13

    move-object v0, v13

    .line 357
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "Util"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v10           #pathFile:Ljava/io/File;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static getSdDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNormalFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "fullName"

    .prologue
    .line 64
    sget-object v0, Lcom/android/fileexplorer/Util;->ANDROID_SECURE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardReady()Z
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 53
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setText(Landroid/view/View;ILjava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 283
    const/4 v1, 0x0

    .line 286
    :goto_0
    return v1

    .line 285
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static shouldShowFile(Ljava/io/File;)Z
    .locals 10
    .parameter "file"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 236
    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v5

    .line 237
    .local v5, show:Z
    if-eqz v5, :cond_0

    move v6, v9

    .line 252
    :goto_0
    return v6

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v8

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, sdFolder:Ljava/lang/String;
    sget-object v0, Lcom/android/fileexplorer/Util;->SysFileDirs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 248
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v8

    .line 249
    goto :goto_0

    .line 247
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #s:Ljava/lang/String;
    :cond_4
    move v6, v9

    .line 252
    goto :goto_0
.end method

.method public static shouldShowFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/Util;->shouldShowFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 366
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p4, p3, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 367
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 368
    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    :goto_0
    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 373
    invoke-virtual {v1, p0, p2, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 374
    invoke-virtual {v0, p4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 375
    return-void

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method public static showTab(I)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 264
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v1

    const-string v2, "FileExplorerTab"

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/ActivitiesManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 266
    .local v0, tabAc:Lcom/android/fileexplorer/FileExplorerTabActivity;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setCurrentTab(I)V

    .line 269
    :cond_0
    return-void
.end method
